.class public Lcom/transsion/hubsdk/thubutils/AssetFallback;
.super Ljava/lang/Object;


# static fields
.field private static sApk:Ljava/lang/String;

.field private static sRoot:Ljava/lang/String;


# direct methods
.method public static ensure()Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sRoot:Ljava/lang/String;

    if-nez v0, :cond_58

    const-string v3, "android.app.ActivityThread"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentApplication"

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v1, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sApk:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "apkasset"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_49
    sput-object v1, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sRoot:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/hubsdk/thubutils/AssetFallback;->extract()Z

    goto :goto_58
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4f} :catch_4f

    :catch_4f
    const-string v0, "/data/data/com.transsion.camera/files/apkasset/"

    sput-object v0, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sRoot:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sApk:Ljava/lang/String;

    goto :goto_58

    :cond_58
    :goto_58
    sget-object v0, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sRoot:Ljava/lang/String;

    return-object v0
.end method

.method private static extract()Z
    .registers 8

    :try_start_0
    sget-object v0, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sApk:Ljava/lang/String;

    if-eqz v0, :cond_91

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_91

    sget-object v1, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sRoot:Ljava/lang/String;

    if-eqz v1, :cond_91

    new-instance v0, Ljava/io/File;

    const-string v2, ".done"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8f

    sget-object v0, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sRoot:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/util/jar/JarFile;

    sget-object v0, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sApk:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :cond_30
    :goto_30
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/jar/JarEntry;

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v2, "assets/camasset/"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual {v4}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_30

    const/16 v2, 0x10

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sRoot:Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x2000

    new-array v4, v6, [B

    :goto_71
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_7c

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_71

    :cond_7c
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_30

    :cond_83
    sget-object v0, Lcom/transsion/hubsdk/thubutils/AssetFallback;->sRoot:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    const-string v2, ".done"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_8f
    const/4 v0, 0x1

    return v0
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_91} :catch_91

    :catch_91
    :cond_91
    const/4 v0, 0x0

    return v0
.end method
