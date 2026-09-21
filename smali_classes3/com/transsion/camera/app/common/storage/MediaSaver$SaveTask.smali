.class Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/MediaSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/storage/MediaSaver;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/MediaSaver;Lcom/transsion/camera/app/common/storage/MediaSaver-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;-><init>(Lcom/transsion/camera/app/common/storage/MediaSaver;)V

    return-void
.end method

.method private hasRequestInQueue()Z
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->-$$Nest$fgetmSaveQueue(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 70
    :try_start_7
    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->-$$Nest$fgetmSaveQueue(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->-$$Nest$fgetmTaskNumber(Lcom/transsion/camera/app/common/storage/MediaSaver;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p0, v1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->-$$Nest$fputmTaskNumber(Lcom/transsion/camera/app/common/storage/MediaSaver;I)V

    const/4 p0, 0x0

    .line 73
    monitor-exit v0

    return p0

    :catchall_21
    move-exception p0

    goto :goto_25

    .line 75
    :cond_23
    monitor-exit v0

    return v2

    .line 77
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_21

    throw p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 67
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 7

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [doInBackground] begin queue size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->-$$Nest$fgetmSaveQueue(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    :cond_22
    :goto_22
    invoke-direct {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->hasRequestInQueue()Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/MediaSaver;->-$$Nest$fgetmSaveQueue(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    .line 86
    :try_start_2f
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->-$$Nest$fgetmSaveQueue(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b5

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->-$$Nest$fgetmSaveQueue(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/storage/SaveRequest;

    .line 88
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {v2}, Lcom/transsion/camera/app/common/storage/MediaSaver;->-$$Nest$fgetmSaveQueue(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_b3

    .line 95
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/SaveRequest;->process()I

    move-result p1

    .line 96
    iget-object v2, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    iget-object v2, v2, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [doInBackground] update: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mMediaSaverListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object v2, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    if-eqz v2, :cond_ae

    .line 99
    :try_start_7c
    instance-of v1, v2, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;

    if-eqz v1, :cond_8a

    .line 100
    check-cast v2, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;

    iget-object v1, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v1, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;->onFileSaved(Landroid/net/Uri;I)V

    goto :goto_8f

    :catch_88
    move-exception p1

    goto :goto_a9

    .line 102
    :cond_8a
    iget-object p1, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;->onFileSaved(Landroid/net/Uri;)V

    .line 104
    :goto_8f
    iget-object p1, v0, Lcom/transsion/camera/app/common/storage/SaveRequest;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_22

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 105
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->video()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_a7} :catch_88

    goto/16 :goto_22

    .line 108
    :goto_a9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_22

    .line 111
    :cond_ae
    invoke-static {v1}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->setProcessStatus(Z)V

    goto/16 :goto_22

    :catchall_b3
    move-exception p0

    goto :goto_b8

    .line 92
    :cond_b5
    :try_start_b5
    monitor-exit p1

    goto/16 :goto_22

    .line 94
    :goto_b8
    monitor-exit p1
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_b3

    throw p0

    .line 115
    :cond_ba
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    iget-object p1, p1, Lcom/transsion/camera/app/common/storage/MediaSaver;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [doInBackground] end queue size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/MediaSaver$SaveTask;->this$0:Lcom/transsion/camera/app/common/storage/MediaSaver;

    invoke-static {p0}, Lcom/transsion/camera/app/common/storage/MediaSaver;->-$$Nest$fgetmSaveQueue(Lcom/transsion/camera/app/common/storage/MediaSaver;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
