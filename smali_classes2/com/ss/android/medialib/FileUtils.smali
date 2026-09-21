.class public Lcom/ss/android/medialib/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_FOLDER_NAME:Ljava/lang/String; = "BDMedia"

.field protected static msFolderPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileExists(Ljava/lang/String;)Z
    .registers 2

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 50
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static createFile(Ljava/lang/String;Z)Ljava/io/File;
    .registers 3

    .line 25
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2e

    if-nez p1, :cond_17

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0

    .line 32
    :cond_17
    :try_start_17
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_27

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    goto :goto_27

    :catch_25
    move-exception p0

    goto :goto_2b

    .line 36
    :cond_27
    :goto_27
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2a} :catch_25

    return-object v0

    .line 38
    :goto_2b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2e
    return-object v0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fileChannelCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    .line 72
    invoke-static {}, Lcom/ss/android/medialib/FileUtils;->isSdcardWritable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    .line 78
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_92
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_8c
    .catchall {:try_start_9 .. :try_end_e} :catchall_85

    .line 79
    :try_start_e
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_13} :catch_80
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_7b
    .catchall {:try_start_e .. :try_end_13} :catchall_76

    .line 80
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_17} :catch_71
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_6c
    .catchall {:try_start_13 .. :try_end_17} :catchall_67

    .line 81
    :try_start_17
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1b} :catch_63
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_5f
    .catchall {:try_start_17 .. :try_end_1b} :catchall_5b

    .line 82
    :try_start_1b
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_24} :catch_56
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_51
    .catchall {:try_start_1b .. :try_end_24} :catchall_4c

    .line 93
    :try_start_24
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2d

    :catch_28
    move-exception v0

    move-object p1, v0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    :goto_2d
    :try_start_2d
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_36

    :catch_31
    move-exception v0

    move-object p1, v0

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    :goto_36
    :try_start_36
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3f

    :catch_3a
    move-exception v0

    move-object p0, v0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3f
    if-eqz v9, :cond_4a

    .line 114
    :try_start_41
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_4a

    :catch_45
    move-exception v0

    move-object p0, v0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4a
    :goto_4a
    const/4 p0, 0x1

    return p0

    :catchall_4c
    move-exception v0

    move-object p1, v0

    :goto_4e
    move-object v2, v3

    goto/16 :goto_fb

    :catch_51
    move-exception v0

    move-object p1, v0

    :goto_53
    move-object v2, v3

    goto/16 :goto_98

    :catch_56
    move-exception v0

    move-object p1, v0

    :goto_58
    move-object v2, v3

    goto/16 :goto_cb

    :catchall_5b
    move-exception v0

    move-object p1, v0

    move-object v9, v2

    goto :goto_4e

    :catch_5f
    move-exception v0

    move-object p1, v0

    move-object v9, v2

    goto :goto_53

    :catch_63
    move-exception v0

    move-object p1, v0

    move-object v9, v2

    goto :goto_58

    :catchall_67
    move-exception v0

    move-object p1, v0

    move-object v4, v2

    :goto_6a
    move-object v9, v4

    goto :goto_4e

    :catch_6c
    move-exception v0

    move-object p1, v0

    move-object v4, v2

    :goto_6f
    move-object v9, v4

    goto :goto_53

    :catch_71
    move-exception v0

    move-object p1, v0

    move-object v4, v2

    :goto_74
    move-object v9, v4

    goto :goto_58

    :catchall_76
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    move-object v4, p0

    goto :goto_6a

    :catch_7b
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    move-object v4, p0

    goto :goto_6f

    :catch_80
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    move-object v4, p0

    goto :goto_74

    :catchall_85
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    move-object v4, p0

    move-object v9, v4

    goto/16 :goto_fb

    :catch_8c
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    move-object v4, p0

    move-object v9, v4

    goto :goto_98

    :catch_92
    move-exception v0

    move-object p1, v0

    move-object p0, v2

    move-object v4, p0

    move-object v9, v4

    goto :goto_cb

    .line 88
    :goto_98
    :try_start_98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_c8

    if-eqz v2, :cond_a6

    .line 93
    :try_start_9d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_a6

    :catch_a1
    move-exception v0

    move-object p1, v0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a6
    :goto_a6
    if-eqz v4, :cond_b1

    .line 100
    :try_start_a8
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_b1

    :catch_ac
    move-exception v0

    move-object p1, v0

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b1
    :goto_b1
    if-eqz p0, :cond_bc

    .line 107
    :try_start_b3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_bc

    :catch_b7
    move-exception v0

    move-object p0, v0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_bc
    :goto_bc
    if-eqz v9, :cond_c7

    .line 114
    :try_start_be
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    goto :goto_c7

    :catch_c2
    move-exception v0

    move-object p0, v0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c7
    :goto_c7
    return v1

    :catchall_c8
    move-exception v0

    move-object p1, v0

    goto :goto_fb

    .line 85
    :goto_cb
    :try_start_cb
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_c8

    if-eqz v2, :cond_d9

    .line 93
    :try_start_d0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_d9

    :catch_d4
    move-exception v0

    move-object p1, v0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d9
    :goto_d9
    if-eqz v4, :cond_e4

    .line 100
    :try_start_db
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_df

    goto :goto_e4

    :catch_df
    move-exception v0

    move-object p1, v0

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e4
    :goto_e4
    if-eqz p0, :cond_ef

    .line 107
    :try_start_e6
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_ea

    goto :goto_ef

    :catch_ea
    move-exception v0

    move-object p0, v0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_ef
    :goto_ef
    if-eqz v9, :cond_fa

    .line 114
    :try_start_f1
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f5

    goto :goto_fa

    :catch_f5
    move-exception v0

    move-object p0, v0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_fa
    :goto_fa
    return v1

    :goto_fb
    if-eqz v2, :cond_105

    .line 93
    :try_start_fd
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_105

    :catch_101
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_105
    :goto_105
    if-eqz v4, :cond_10f

    .line 100
    :try_start_107
    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_10b

    goto :goto_10f

    :catch_10b
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10f
    :goto_10f
    if-eqz p0, :cond_11a

    .line 107
    :try_start_111
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_115

    goto :goto_11a

    :catch_115
    move-exception v0

    move-object p0, v0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11a
    :goto_11a
    if-eqz v9, :cond_125

    .line 114
    :try_start_11c
    invoke-virtual {v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_120

    goto :goto_125

    :catch_120
    move-exception v0

    move-object p0, v0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 119
    :cond_125
    :goto_125
    throw p1
.end method

.method public static isSdcardWritable()Z
    .registers 2

    .line 58
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    const/4 v0, 0x0

    return v0
.end method
