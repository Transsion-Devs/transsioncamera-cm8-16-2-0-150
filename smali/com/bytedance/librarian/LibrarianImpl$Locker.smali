.class Lcom/bytedance/librarian/LibrarianImpl$Locker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/librarian/LibrarianImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Locker"
.end annotation


# instance fields
.field private cacheLock:Ljava/nio/channels/FileLock;

.field private lockChannel:Ljava/nio/channels/FileChannel;

.field private lockFile:Ljava/io/File;

.field private lockRaf:Ljava/io/RandomAccessFile;

.field final synthetic this$0:Lcom/bytedance/librarian/LibrarianImpl;


# direct methods
.method constructor <init>(Lcom/bytedance/librarian/LibrarianImpl;Ljava/io/File;)V
    .registers 3

    .line 726
    iput-object p1, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->this$0:Lcom/bytedance/librarian/LibrarianImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput-object p2, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method close()V
    .registers 4

    .line 749
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->cacheLock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_7

    .line 751
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    .line 755
    :catch_7
    :cond_7
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->this$0:Lcom/bytedance/librarian/LibrarianImpl;

    # getter for: Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;
    invoke-static {v0}, Lcom/bytedance/librarian/LibrarianImpl;->access$000(Lcom/bytedance/librarian/LibrarianImpl;)Lcom/bytedance/librarian/LibrarianMonitor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "released lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->this$0:Lcom/bytedance/librarian/LibrarianImpl;

    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockChannel:Ljava/nio/channels/FileChannel;

    # invokes: Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v0, v1}, Lcom/bytedance/librarian/LibrarianImpl;->access$100(Lcom/bytedance/librarian/LibrarianImpl;Ljava/io/Closeable;)V

    .line 757
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->this$0:Lcom/bytedance/librarian/LibrarianImpl;

    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockRaf:Ljava/io/RandomAccessFile;

    # invokes: Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v0, p0}, Lcom/bytedance/librarian/LibrarianImpl;->access$100(Lcom/bytedance/librarian/LibrarianImpl;Ljava/io/Closeable;)V

    return-void
.end method

.method lock()V
    .registers 4

    .line 731
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockFile:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockRaf:Ljava/io/RandomAccessFile;

    .line 733
    :try_start_b
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockChannel:Ljava/nio/channels/FileChannel;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_5a

    .line 735
    :try_start_11
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->this$0:Lcom/bytedance/librarian/LibrarianImpl;

    # getter for: Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;
    invoke-static {v0}, Lcom/bytedance/librarian/LibrarianImpl;->access$000(Lcom/bytedance/librarian/LibrarianImpl;)Lcom/bytedance/librarian/LibrarianMonitor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blocking on lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->cacheLock:Ljava/nio/channels/FileLock;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_39} :catch_5c

    .line 741
    :try_start_39
    iget-object v0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->this$0:Lcom/bytedance/librarian/LibrarianImpl;

    # getter for: Lcom/bytedance/librarian/LibrarianImpl;->mMonitor:Lcom/bytedance/librarian/LibrarianMonitor;
    invoke-static {v0}, Lcom/bytedance/librarian/LibrarianImpl;->access$000(Lcom/bytedance/librarian/LibrarianImpl;)Lcom/bytedance/librarian/LibrarianMonitor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquired on lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/librarian/LibrarianMonitor;->logDebug(Ljava/lang/String;)V

    return-void

    :catch_5a
    move-exception v0

    goto :goto_65

    :catch_5c
    move-exception v0

    .line 738
    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->this$0:Lcom/bytedance/librarian/LibrarianImpl;

    iget-object v2, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockChannel:Ljava/nio/channels/FileChannel;

    # invokes: Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v1, v2}, Lcom/bytedance/librarian/LibrarianImpl;->access$100(Lcom/bytedance/librarian/LibrarianImpl;Ljava/io/Closeable;)V

    .line 739
    throw v0
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_65} :catch_5a

    .line 743
    :goto_65
    iget-object v1, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->this$0:Lcom/bytedance/librarian/LibrarianImpl;

    iget-object p0, p0, Lcom/bytedance/librarian/LibrarianImpl$Locker;->lockRaf:Ljava/io/RandomAccessFile;

    # invokes: Lcom/bytedance/librarian/LibrarianImpl;->closeQuietly(Ljava/io/Closeable;)V
    invoke-static {v1, p0}, Lcom/bytedance/librarian/LibrarianImpl;->access$100(Lcom/bytedance/librarian/LibrarianImpl;Ljava/io/Closeable;)V

    .line 744
    throw v0
.end method
