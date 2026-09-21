.class Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cdv/io/NvAndroidVideoFileReaderSW;->setupDecoderWithImageReader(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;


# direct methods
.method constructor <init>(Lcom/cdv/io/NvAndroidVideoFileReaderSW;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 4

    .line 548
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;

    # getter for: Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_frameSyncObject:Ljava/lang/Object;
    invoke-static {p1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->access$000(Lcom/cdv/io/NvAndroidVideoFileReaderSW;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 549
    :try_start_7
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;

    const/4 v1, 0x1

    # setter for: Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReady:Z
    invoke-static {v0, v1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->access$102(Lcom/cdv/io/NvAndroidVideoFileReaderSW;Z)Z

    .line 550
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;->this$0:Lcom/cdv/io/NvAndroidVideoFileReaderSW;

    # getter for: Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_frameSyncObject:Ljava/lang/Object;
    invoke-static {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->access$000(Lcom/cdv/io/NvAndroidVideoFileReaderSW;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 551
    monitor-exit p1

    return-void

    :catchall_18
    move-exception p0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0
.end method
