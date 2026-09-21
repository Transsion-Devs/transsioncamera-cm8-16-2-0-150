.class Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;

.field private mNeedStop:Z

.field private final mRequest:Lcom/transsion/camera/featurelibs/download/Request;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/featurelibs/download/Request;Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;)V
    .registers 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;->mNeedStop:Z

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;->mRequest:Lcom/transsion/camera/featurelibs/download/Request;

    .line 127
    iput-object p2, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;->mCallback:Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;->mRequest:Lcom/transsion/camera/featurelibs/download/Request;

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;->mCallback:Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;

    .line 135
    :try_start_4
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/download/Request;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 138
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 139
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/download/Request;->isWriteToFile()Z

    move-result v2
    :try_end_28
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_28} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_28} :catch_c5

    const/4 v7, 0x2

    if-nez v2, :cond_42

    const-wide/16 v4, 0x64

    .line 142
    :try_start_2d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_39
    .catch Ljava/net/URISyntaxException; {:try_start_2d .. :try_end_30} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_30} :catch_c5

    .line 148
    :try_start_30
    invoke-static {v3}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl;->-$$Nest$smstreamToByte(Ljava/io/File;)[B

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;->onSuccess(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;[B)V

    goto/16 :goto_ca

    :catch_39
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    invoke-interface {v1, p0, v7}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;->onFailure(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;I)V

    goto/16 :goto_ca

    .line 150
    :cond_42
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/download/Request;->getTargetFile()Ljava/io/File;

    move-result-object v0

    .line 151
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5
    :try_end_4a
    .catch Ljava/net/URISyntaxException; {:try_start_30 .. :try_end_4a} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_4a} :catch_c5

    const/4 v8, 0x0

    .line 152
    :try_start_4b
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_b5
    .catch Ljava/net/URISyntaxException; {:try_start_4b .. :try_end_50} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_50} :catch_c5

    .line 153
    :try_start_50
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_a9

    const/16 v0, 0x1000

    .line 154
    :try_start_57
    new-array v0, v0, [B

    move v2, v8

    .line 157
    :goto_5a
    iget-boolean v3, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;->mNeedStop:Z

    if-nez v3, :cond_8e

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_8e

    .line 158
    invoke-virtual {v10, v0, v8, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_8b

    add-int v11, v2, v3

    int-to-long v3, v11

    move-object v2, p0

    .line 160
    :try_start_6b
    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;->onProgress(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;JJ)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_76

    const-wide/16 v3, 0xa

    .line 163
    :try_start_70
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_79
    .catchall {:try_start_70 .. :try_end_73} :catchall_76

    move-object p0, v2

    move v2, v11

    goto :goto_5a

    :catchall_76
    move-exception v0

    :goto_77
    move-object p0, v0

    goto :goto_a0

    :catch_79
    move-exception v0

    move-object p0, v0

    .line 165
    :try_start_7b
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    invoke-interface {v1, v2, v7}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;->onFailure(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;I)V
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_76

    .line 175
    :goto_81
    :try_start_81
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_88

    goto :goto_9c

    :catch_85
    move-exception v0

    :goto_86
    move-object p0, v0

    goto :goto_b8

    :catchall_88
    move-exception v0

    :goto_89
    move-object p0, v0

    goto :goto_ac

    :catchall_8b
    move-exception v0

    move-object v2, p0

    goto :goto_77

    :cond_8e
    move-object v2, p0

    .line 170
    :try_start_8f
    iget-boolean p0, v2, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;->mNeedStop:Z

    if-eqz p0, :cond_97

    .line 171
    invoke-interface {v1, v2, v7}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;->onFailure(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;I)V

    goto :goto_81

    :cond_97
    const/4 p0, 0x0

    .line 173
    invoke-interface {v1, v2, p0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;->onSuccess(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;[B)V
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_76

    goto :goto_81

    .line 175
    :goto_9c
    :try_start_9c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_85
    .catch Ljava/net/URISyntaxException; {:try_start_9c .. :try_end_9f} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9c .. :try_end_9f} :catch_c5

    goto :goto_ca

    .line 152
    :goto_a0
    :try_start_a0
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    goto :goto_a8

    :catchall_a4
    move-exception v0

    :try_start_a5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a8
    throw p0
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_88

    :catchall_a9
    move-exception v0

    move-object v2, p0

    goto :goto_89

    :goto_ac
    :try_start_ac
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b0

    goto :goto_b4

    :catchall_b0
    move-exception v0

    :try_start_b1
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b4
    throw p0
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b5} :catch_85
    .catch Ljava/net/URISyntaxException; {:try_start_b1 .. :try_end_b5} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b1 .. :try_end_b5} :catch_c5

    :catch_b5
    move-exception v0

    move-object v2, p0

    goto :goto_86

    .line 176
    :goto_b8
    :try_start_b8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    invoke-interface {v1, v2, v8}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;->onFailure(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;I)V

    goto :goto_ca

    :cond_bf
    move-object v2, p0

    const/4 p0, 0x1

    .line 181
    invoke-interface {v1, v2, p0}, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command$Callback;->onFailure(Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;I)V
    :try_end_c4
    .catch Ljava/net/URISyntaxException; {:try_start_b8 .. :try_end_c4} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b8 .. :try_end_c4} :catch_c5

    goto :goto_ca

    :catch_c5
    move-exception v0

    move-object p0, v0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_ca
    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/download/control/FileRequestControl$Command;->mNeedStop:Z

    return-void
.end method
