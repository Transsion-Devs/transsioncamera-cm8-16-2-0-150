.class public Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final CAM_FILE_NAME:Ljava/lang/String; = "_camFile"

.field private static final GYRO_FILE_NAME:Ljava/lang/String; = "_gyroFile"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCamFile:Ljava/io/File;

.field private mCamFileWriter:Ljava/io/BufferedWriter;

.field private final mFrameIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGyroFile:Ljava/io/File;

.field private mGyroFileWriter:Ljava/io/BufferedWriter;

.field private final mVideoSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveFrameInfoTxtWriter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/io/File;Landroid/util/Size;)V
    .registers 6

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mFrameIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    .line 41
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFile:Ljava/io/File;

    .line 42
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mVideoSize:Landroid/util/Size;

    .line 43
    new-instance p3, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    .line 44
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance p3, Ljava/io/FileWriter;

    invoke-direct {p3, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    return-void
.end method

.method public static create(JLjava/io/File;Landroid/util/Size;)Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;
    .registers 9

    .line 49
    const-string v0, ".txt"

    const/4 v1, 0x0

    if-nez p3, :cond_6

    return-object v1

    .line 52
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted_ro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return-object v1

    .line 57
    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_camFile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "_gyroFile"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    new-instance p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;

    invoke-direct {p0, v2, v3, p3}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;-><init>(Ljava/io/File;Ljava/io/File;Landroid/util/Size;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_56} :catch_57

    return-object p0

    :catch_57
    move-exception p0

    .line 61
    sget-object p1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "create: failed to create frame info writer"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private parseCamTimestamp(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, -0x1

    if-nez p1, :cond_5

    return-wide v0

    :cond_5
    const/16 p0, 0x2c

    .line 171
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_e

    return-wide v0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 175
    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-gez p0, :cond_17

    return-wide v0

    .line 180
    :cond_17
    :try_start_17
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_23} :catch_24

    return-wide p0

    :catch_24
    return-wide v0
.end method

.method private replaceFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 8

    const/4 p0, 0x0

    if-eqz p1, :cond_91

    if-nez p2, :cond_7

    goto/16 :goto_91

    .line 190
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 193
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 194
    invoke-virtual {p2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_35

    goto :goto_54

    .line 196
    :cond_35
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replaceFile: failed to backup old file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0

    .line 200
    :cond_54
    :goto_54
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    .line 206
    :cond_5f
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replaceFile: failed to replace, rollback. src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", dst="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v1, :cond_8e

    .line 209
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 210
    invoke-virtual {v0, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_91

    .line 212
    :cond_8e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_91
    :goto_91
    return p0
.end method

.method private rewriteCamFileByRange(JJ)V
    .registers 14

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    if-eqz v0, :cond_e2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_e2

    .line 137
    :cond_c
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    :try_start_2e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3a} :catch_c1

    .line 141
    :try_start_3a
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_c3

    move v3, v4

    .line 143
    :cond_46
    :goto_46
    :try_start_46
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_65

    add-int/lit8 v4, v4, 0x1

    .line 145
    invoke-direct {p0, v5}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->parseCamTimestamp(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v6, p1

    if-ltz v8, :cond_46

    cmp-long v6, v6, p3

    if-gtz v6, :cond_46

    .line 147
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :catchall_63
    move-exception p0

    goto :goto_c5

    .line 152
    :cond_65
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_63

    .line 153
    :try_start_68
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_c3

    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_c1

    .line 158
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->replaceFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_91

    .line 159
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rewriteCamFileByRange: failed to replace cam file, tmp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 161
    :cond_91
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rewriteCamFileByRange: kept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "~"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catch_c1
    move-exception p0

    goto :goto_d7

    :catchall_c3
    move-exception p0

    goto :goto_ce

    .line 140
    :goto_c5
    :try_start_c5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c9

    goto :goto_cd

    :catchall_c9
    move-exception p1

    :try_start_ca
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_cd
    throw p0
    :try_end_ce
    .catchall {:try_start_ca .. :try_end_ce} :catchall_c3

    :goto_ce
    :try_start_ce
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_d2

    goto :goto_d6

    :catchall_d2
    move-exception p1

    :try_start_d3
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d6
    throw p0
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d7} :catch_c1

    .line 154
    :goto_d7
    sget-object p1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "rewriteCamFileByRange: failed"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 134
    :cond_e2
    :goto_e2
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "rewriteCamFileByRange: cam file not exist"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 7

    .line 233
    const-string v0, " ,mGyroFile :"

    const-string v1, "close: frame info saved at mCamFile :"

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    if-eqz v2, :cond_aa

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    if-nez v3, :cond_e

    goto/16 :goto_aa

    :cond_e
    const/4 v3, 0x0

    .line 238
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 239
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 240
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 241
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_4e
    .catchall {:try_start_f .. :try_end_21} :catchall_4c

    .line 245
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    .line 246
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    .line 247
    sget-object v2, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFile:Ljava/io/File;

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_4c
    move-exception v2

    goto :goto_7f

    :catch_4e
    move-exception v2

    .line 243
    :try_start_4f
    sget-object v4, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v5, "close: failed to close writer"

    invoke-static {v4, v5, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4c

    .line 245
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    .line 246
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFile:Ljava/io/File;

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {v4, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 245
    :goto_7f
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    .line 246
    iput-object v3, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    .line 247
    sget-object v3, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFile:Ljava/io/File;

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 249
    throw v2

    :cond_aa
    :goto_aa
    return-void
.end method

.method public flush()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    if-nez v1, :cond_9

    goto :goto_1a

    .line 113
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 116
    sget-object v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "flush: failed"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public getCamFilePath()Ljava/lang/String;
    .registers 1

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFile:Ljava/io/File;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGyroFilePath()Ljava/lang/String;
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFile:Ljava/io/File;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 228
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public logFrame(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 67
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    if-eqz v2, :cond_e0

    iget-object v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    if-nez v2, :cond_11

    goto/16 :goto_e0

    .line 71
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getGyroTimeStampValues()Ljava/util/List;

    move-result-object v9

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getExposureTime()J

    move-result-wide v2

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getRollingShutterTime()J

    move-result-wide v5

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;->getTimestamp()J

    move-result-wide v7

    .line 76
    iget-object v10, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mFrameIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    .line 77
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 79
    :try_start_48
    iget-object v12, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%s,%d,%d,%d,%d,%d,%d"

    .line 81
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v5, v4

    move-object v8, v4

    move-object v6, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v2

    move-object v2, v11

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    .line 79
    invoke-static {v13, v14, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 82
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mCamFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    if-eqz v9, :cond_d0

    .line 85
    :goto_73
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d0

    .line 86
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;

    .line 87
    iget-object v3, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d,%f,%f,%f,%f,%f,%f"

    .line 89
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 90
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGSensorX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 91
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGSensorY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 92
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGSensorZ()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    .line 93
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGyroX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    .line 94
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGyroY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    .line 95
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->getGyroZ()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v2

    .line 87
    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 96
    iget-object v2, v0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->mGyroFileWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 100
    :cond_d0
    rem-int/lit8 v10, v10, 0xa

    if-nez v10, :cond_e0

    .line 101
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->flush()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_d7} :catch_d8

    return-void

    :catch_d8
    move-exception v0

    .line 104
    sget-object v1, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "logFrame: failed to write"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e0
    :goto_e0
    return-void
.end method

.method public rewriteByStableTimestampRange(JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_16

    cmp-long v0, p3, v0

    if-lez v0, :cond_16

    cmp-long v0, p3, p1

    if-gez v0, :cond_f

    goto :goto_16

    .line 128
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->close()V

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->rewriteCamFileByRange(JJ)V

    return-void

    .line 124
    :cond_16
    :goto_16
    sget-object p0, Lcom/transsion/camera/feature/setting/livephoto/writer/LiveFrameInfoTxtWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rewriteByStableTimestampRange: invalid range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ~ "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
