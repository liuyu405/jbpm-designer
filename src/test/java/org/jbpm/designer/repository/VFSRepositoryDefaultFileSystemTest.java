package org.jbpm.designer.repository;

import org.jbpm.designer.repository.filters.FilterByExtension;
import org.jbpm.designer.repository.impl.AssetBuilder;
import org.jbpm.designer.repository.vfs.VFSRepository;
import org.jbpm.designer.web.profile.impl.JbpmProfileImpl;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.util.Collection;

import static org.junit.Assert.*;
import static org.junit.Assert.assertEquals;

public class VFSRepositoryDefaultFileSystemTest extends RepositoryBaseTest {

    @Before
    public void setup() {
        new File(REPOSITORY_ROOT).mkdir();
        profile = new JbpmProfileImpl();
        profile.setRepositoryId("vfs");
        profile.setRepositoryRoot(VFS_REPOSITORY_ROOT);
        profile.setRepositoryGlobalDir("/global");
    }

    @After
    public void teardown() {
        File repo = new File(REPOSITORY_ROOT);
        if(repo.exists()) {
            deleteFiles(repo);
        }
        repo.delete();
    }
    
    @Test
    public void testCreateDefaultVFSRepository() {


        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/");
        assertTrue(rootFolderExists);

        Collection<Directory> directories = repository.listDirectories("/");
        assertNotNull(directories);
        assertEquals(0, directories.size());
    }

    @Test
    public void testCreateDirectory() {
        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/test");
        assertFalse(rootFolderExists);

        String directoryId = repository.createDirectory("/test");
        assertNotNull(directoryId);

        rootFolderExists = repository.directoryExists("/test");
        assertTrue(rootFolderExists);
    }

    @Test
    public void testListDirectories() {
        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/test");
        assertFalse(rootFolderExists);

        String directoryId = repository.createDirectory("/test");
        assertNotNull(directoryId);
        directoryId = repository.createDirectory("/test2");
        assertNotNull(directoryId);
        directoryId = repository.createDirectory("/test3/nested");
        assertNotNull(directoryId);

        rootFolderExists = repository.directoryExists("/test");
        assertTrue(rootFolderExists);

        rootFolderExists = repository.directoryExists("/test2");
        assertTrue(rootFolderExists);

        rootFolderExists = repository.directoryExists("/test3");
        assertTrue(rootFolderExists);

        Collection<Directory> directories = repository.listDirectories("/");
        assertNotNull(directories);
        assertEquals(3, directories.size());

        directories = repository.listDirectories("/test3");
        assertNotNull(directories);
        assertEquals(1, directories.size());
    }

    @Test
    public void testDeleteDirectory() {
        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/test");
        assertFalse(rootFolderExists);

        String directoryId = repository.createDirectory("/test");
        assertNotNull(directoryId);

        rootFolderExists = repository.directoryExists("/test");
        assertTrue(rootFolderExists);

        boolean deleted = repository.deleteDirectory("/test", true);
        assertTrue(deleted);

        rootFolderExists = repository.directoryExists("/test");
        assertFalse(rootFolderExists);

    }

    @Test
    public void testDeleteNonEmptyDirectory() {
        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/test");
        assertFalse(rootFolderExists);

        String directoryId = repository.createDirectory("/test/nested");
        assertNotNull(directoryId);

        rootFolderExists = repository.directoryExists("/test");
        assertTrue(rootFolderExists);

        rootFolderExists = repository.directoryExists("/test/nested");
        assertTrue(rootFolderExists);

        boolean deleted = repository.deleteDirectory("/test", false);
        assertTrue(deleted);

        rootFolderExists = repository.directoryExists("/test");
        assertFalse(rootFolderExists);

    }

    @Test
    public void testListAsset() {

        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/");
        assertTrue(rootFolderExists);

        Collection<Asset> assets = repository.listAssets("/");
        assertNotNull(assets);
        assertEquals(0, assets.size());

        try {
            new File(REPOSITORY_ROOT + "/" + "test.txt").createNewFile();
            new File(REPOSITORY_ROOT + "/" + "test.png").createNewFile();
        } catch (Exception e) {

        }

        assets = repository.listAssets("/");
        assertNotNull(assets);
        assertEquals(2, assets.size());
    }

    @Test
    public void testListSingleTextAsset() {

        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/");
        assertTrue(rootFolderExists);

        Collection<Asset> assets = repository.listAssets("/");
        assertNotNull(assets);
        assertEquals(0, assets.size());

        try {
            new File(REPOSITORY_ROOT + "/" + "test.txt").createNewFile();
        } catch (Exception e) {

        }

        assets = repository.listAssets("/");
        assertNotNull(assets);
        assertEquals(1, assets.size());
        Asset<String> asset = assets.iterator().next();

        assertEquals("txt", asset.getAssetType());
        assertEquals("test.txt", asset.getFullName());
        assertEquals("test", asset.getName());
        assertEquals("/", asset.getAssetLocation());
    }

    @Test
    public void testListSingleBinaryAsset() {

        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/");
        assertTrue(rootFolderExists);

        Collection<Asset> assets = repository.listAssets("/");
        assertNotNull(assets);
        assertEquals(0, assets.size());

        try {
            new File(REPOSITORY_ROOT + "/" + "test.png").createNewFile();
        } catch (Exception e) {

        }

        assets = repository.listAssets("/");
        assertNotNull(assets);
        assertEquals(1, assets.size());

        Asset<byte[]> asset = assets.iterator().next();

        assertEquals("png", asset.getAssetType());
        assertEquals("test.png", asset.getFullName());
        assertEquals("test", asset.getName());
        assertEquals("/", asset.getAssetLocation());
    }

    @Test
    public void testListNestedSingleTextAsset() {

        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/");
        assertTrue(rootFolderExists);

        String directoryId = repository.createDirectory("/test/nested");
        assertNotNull(directoryId);

        Collection<Asset> assets = repository.listAssets("/test/nested");
        assertNotNull(assets);
        assertEquals(0, assets.size());

        try {
            new File(REPOSITORY_ROOT + "/test/nested/" + "test.txt").createNewFile();
        } catch (Exception e) {

        }

        assets = repository.listAssets("/test/nested");
        assertNotNull(assets);
        assertEquals(1, assets.size());
        Asset<String> asset = assets.iterator().next();

        assertEquals("txt", asset.getAssetType());
        assertEquals("test", asset.getName());
        assertEquals("test.txt", asset.getFullName());
        assertEquals("/test/nested", asset.getAssetLocation());
    }

    @Test
    public void testStoreSingleBinaryAsset() throws AssetNotFoundException{

        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/");
        assertTrue(rootFolderExists);

        Collection<Asset> assets = repository.listAssets("/");
        assertNotNull(assets);
        assertEquals(0, assets.size());

        AssetBuilder builder = AssetBuilderFactory.getAssetBuilder(Asset.AssetType.Byte);
        builder.content("simple content".getBytes())
                .type("png")
                .name("test")
                .location("/");

        String id = repository.createAsset(builder.getAsset());

        assertNotNull(id);

        Asset<byte[]> asset = repository.loadAsset(id);

        assertEquals("png", asset.getAssetType());
        assertEquals("test", asset.getName());
        assertEquals("test.png", asset.getFullName());
        assertEquals("/", asset.getAssetLocation());
        assertFalse(asset.getAssetContent().length == 0);
    }

    @Test
    public void testStoreSingleTextAsset() throws AssetNotFoundException{

        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/");
        assertTrue(rootFolderExists);

        Collection<Asset> assets = repository.listAssets("/");
        assertNotNull(assets);
        assertEquals(0, assets.size());

        AssetBuilder builder = AssetBuilderFactory.getAssetBuilder(Asset.AssetType.Text);
        builder.content("simple content")
                .type("txt")
                .name("test")
                .location("/");

        String id = repository.createAsset(builder.getAsset());

        assertNotNull(id);

        Asset<String> asset = repository.loadAsset(id);

        assertEquals("txt", asset.getAssetType());
        assertEquals("test", asset.getName());
        assertEquals("test.txt", asset.getFullName());
        assertEquals("/", asset.getAssetLocation());
        assertEquals("simple content\n", asset.getAssetContent());
    }

    @Test
    public void testAssetExists() throws AssetNotFoundException{

        Repository repository = new VFSRepository(profile);

        boolean rootFolderExists = repository.directoryExists("/");
        assertTrue(rootFolderExists);

        Collection<Asset> assets = repository.listAssets("/");
        assertNotNull(assets);
        assertEquals(0, assets.size());

        AssetBuilder builder = AssetBuilderFactory.getAssetBuilder(Asset.AssetType.Text);
        builder.content("simple content")
                .type("txt")
                .name("test")
                .location("/");

        String id = repository.createAsset(builder.getAsset());

        assertNotNull(id);

        boolean assetExists = repository.assetExists(id);
        assertTrue(assetExists);
    }

    @Test
    public void testListAssetsRecursively() {
        Repository repository = new VFSRepository(profile);

        AssetBuilder builder = AssetBuilderFactory.getAssetBuilder(Asset.AssetType.Text);
        builder.content("simple content")
                .type("bpmn2")
                .name("process")
                .location("/1/2/3/4/5/6");

        String id = repository.createAsset(builder.getAsset());

        Collection<Asset> foundAsset = repository.listAssetsRecursively("/", new FilterByExtension("bpmn2"));

        assertNotNull(foundAsset);
        assertEquals(1, foundAsset.size());
    }

    @Test
    public void testUpdateAsset() throws AssetNotFoundException {
        Repository repository = new VFSRepository(profile);

        AssetBuilder builder = AssetBuilderFactory.getAssetBuilder(Asset.AssetType.Text);
        builder.content("simple content")
                .type("bpmn2")
                .name("process")
                .location("/");

        String id = repository.createAsset(builder.getAsset());

        Collection<Asset> foundAsset = repository.listAssets("/", new FilterByExtension("bpmn2"));

        assertNotNull(foundAsset);
        assertEquals(1, foundAsset.size());

        builder.content("updated content").uniqueId(id);

        id = repository.updateAsset(builder.getAsset());

        foundAsset = repository.listAssetsRecursively("/", new FilterByExtension("bpmn2"));

        assertNotNull(foundAsset);
        assertEquals(1, foundAsset.size());

        String content = ((Asset<String>)repository.loadAsset(id)).getAssetContent();
        assertNotNull(content);
        assertEquals("updated content\n", content);
    }
}
