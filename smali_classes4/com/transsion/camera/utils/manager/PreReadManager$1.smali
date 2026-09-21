.class Lcom/transsion/camera/utils/manager/PreReadManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/utils/manager/PreReadManager;->buildPreReadTask(Ljava/lang/String;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/manager/PreReadManager;

.field final synthetic val$maliSoPath:Ljava/lang/String;

.field final synthetic val$preReadSizeBytes:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/utils/manager/PreReadManager;ILjava/lang/String;)V
    .registers 4

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/utils/manager/PreReadManager$1;->this$0:Lcom/transsion/camera/utils/manager/PreReadManager;

    iput p2, p0, Lcom/transsion/camera/utils/manager/PreReadManager$1;->val$preReadSizeBytes:I

    iput-object p3, p0, Lcom/transsion/camera/utils/manager/PreReadManager$1;->val$maliSoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 58
    const-string v0, "doPreRead end time = "

    iget-object v1, p0, Lcom/transsion/camera/utils/manager/PreReadManager$1;->this$0:Lcom/transsion/camera/utils/manager/PreReadManager;

    invoke-static {v1}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$fgetmNeedInterrupt(Lcom/transsion/camera/utils/manager/PreReadManager;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_d4

    .line 62
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 63
    const-string v3, "doPreRead"

    invoke-static {v3}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    const-string v4, "doPreRead start."

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 v3, 0x20000

    .line 66
    new-array v4, v3, [B

    .line 67
    iget v5, p0, Lcom/transsion/camera/utils/manager/PreReadManager$1;->val$preReadSizeBytes:I

    .line 69
    :try_start_24
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/transsion/camera/utils/manager/PreReadManager$1;->val$maliSoPath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_30} :catch_c1
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_30} :catch_99
    .catchall {:try_start_24 .. :try_end_30} :catchall_81

    :goto_30
    if-lez v5, :cond_8c

    .line 71
    :try_start_32
    iget-object v7, p0, Lcom/transsion/camera/utils/manager/PreReadManager$1;->this$0:Lcom/transsion/camera/utils/manager/PreReadManager;

    invoke-static {v7}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$fgetmNeedInterrupt(Lcom/transsion/camera/utils/manager/PreReadManager;)Z

    move-result v7

    if-nez v7, :cond_56

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_45

    goto :goto_56

    .line 75
    :cond_45
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    .line 76
    invoke-virtual {v6, v4, v8, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_52

    goto :goto_8c

    :cond_52
    sub-int/2addr v5, v7

    goto :goto_30

    :catchall_54
    move-exception p0

    goto :goto_83

    .line 72
    :cond_56
    :goto_56
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v3, "doPreRead interrupt."

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_32 .. :try_end_5f} :catchall_54

    .line 82
    :try_start_5f
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_62} :catch_c1
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_99
    .catchall {:try_start_5f .. :try_end_62} :catchall_81

    .line 87
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    :catchall_81
    move-exception p0

    goto :goto_d5

    .line 69
    :goto_83
    :try_start_83
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception v3

    :try_start_88
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8b
    throw p0

    .line 82
    :cond_8c
    :goto_8c
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_8f} :catch_c1
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8f} :catch_99
    .catchall {:try_start_88 .. :try_end_8f} :catchall_81

    .line 87
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6b

    .line 85
    :catch_99
    :try_start_99
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v3, "doPreRead IOException."

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_81

    .line 87
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_ab
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    goto :goto_d4

    .line 83
    :catch_c1
    :try_start_c1
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v3, "doPreRead FileNotFoundException."

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_81

    .line 87
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_ab

    :goto_d4
    return-void

    :goto_d5
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 89
    throw p0
.end method
