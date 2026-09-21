.class public abstract Lcom/apprichtap/haptic/base/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprichtap/haptic/base/d$a;
    }
.end annotation


# static fields
.field private static b:Z = true

.field public static d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 0
    if-eqz p0, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_50

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_f
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1e} :catch_36
    .catchall {:try_start_f .. :try_end_1e} :catchall_34

    :goto_1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_2a
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    goto :goto_1e

    :catchall_28
    move-exception p0

    goto :goto_47

    :catch_2a
    move-exception p0

    goto :goto_32

    :cond_2c
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_41

    :catch_30
    move-exception p0

    goto :goto_3e

    :goto_32
    move-object v1, v2

    goto :goto_37

    :catchall_34
    move-exception p0

    goto :goto_46

    :catch_36
    move-exception p0

    :goto_37
    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    :try_start_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_30

    goto :goto_41

    :goto_3e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_46
    move-object v2, v1

    :goto_47
    :try_start_47
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4f
    throw p0

    :cond_50
    :goto_50
    const-string p0, ""

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 0
    const-string v0, "Util"

    sget-boolean v1, Lcom/apprichtap/haptic/base/d;->b:Z

    if-nez v1, :cond_8

    goto/16 :goto_83

    :cond_8
    const/4 v1, 0x0

    :try_start_9
    sget-object v2, Lcom/apprichtap/haptic/base/d;->d:Landroid/content/Context;

    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6f

    sget-object v2, Lcom/apprichtap/haptic/base/d;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFile file path:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/apprichtap/haptic/base/d$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_5c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_5c

    :catchall_58
    move-exception p0

    goto :goto_84

    :catch_5a
    move-exception p0

    goto :goto_73

    :cond_5c
    :goto_5c
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_61} :catch_5a
    .catchall {:try_start_9 .. :try_end_61} :catchall_58

    :try_start_61
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_68} :catch_6c
    .catchall {:try_start_61 .. :try_end_68} :catchall_6a

    move-object v1, p0

    goto :goto_6f

    :catchall_6a
    move-exception p1

    goto :goto_86

    :catch_6c
    move-exception p1

    move-object v1, p0

    goto :goto_74

    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_7f

    return-void

    :goto_73
    move-object p1, p0

    :goto_74
    :try_start_74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/apprichtap/haptic/base/d$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_58

    :try_start_7b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_83

    :catch_7f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_83
    return-void

    :goto_84
    move-object p1, p0

    move-object p0, v1

    :goto_86
    :try_start_86
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8e
    throw p1
.end method

.method static synthetic a()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/apprichtap/haptic/base/d;->b:Z

    return v0
.end method

.method public static b()Z
    .registers 1

    sget-boolean v0, Lcom/apprichtap/haptic/base/d;->b:Z

    return v0
.end method
