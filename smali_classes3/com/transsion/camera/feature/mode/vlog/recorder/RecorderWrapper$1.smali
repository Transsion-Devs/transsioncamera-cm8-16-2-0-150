.class Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/recorder/listener/IVlogRecordContract$IRecorderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;


# direct methods
.method public static synthetic $r8$lambda$9dJ_Xt5vCHkJj5NVYxCAulkiiGA(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->lambda$onRecorderStopped$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$exaXqOHzx6sA_HUNmCrEzkb5LEg(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->lambda$onRecorderStopped$2(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$tbWga8zLXkvLFIKVGOdlzN5v0mE(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;Ljava/lang/String;JLjava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->lambda$onRecorderStopped$3(Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wwQbR9kL6i6fYkTm5tWpdV92Tf0(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->lambda$onRecorderStopped$1(I)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRecorderStopped$0(I)V
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCallbackListener(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;->onRecorderFail(I)V

    return-void
.end method

.method private synthetic lambda$onRecorderStopped$1(I)V
    .registers 2

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCallbackListener(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;->onRecorderFail(I)V

    return-void
.end method

.method private synthetic lambda$onRecorderStopped$2(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 16

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCallbackListener(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmVideoHintOrientation(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I

    move-result v8

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;->onRecorderStopped(Ljava/lang/String;Ljava/lang/String;JJI)V

    return-void
.end method

.method private synthetic lambda$onRecorderStopped$3(Ljava/lang/String;JLjava/util/List;)V
    .registers 12

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCallbackListener(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmVideoHintOrientation(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I

    move-result v6

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;->onRecorderStopped(Ljava/lang/String;JLjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public onRecorderPrepareAbort()V
    .registers 3

    .line 350
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecorderPrepareAbort"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCallbackListener(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecorderPreparing()V
    .registers 3

    .line 216
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecorderPreparing"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCallbackListener(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecorderStarted()V
    .registers 4

    .line 223
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onRecorderStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmFrameSelect(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmVideoHintOrientation(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->onVideoRecordStart(I)V

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCallbackListener(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmNeedRecognize(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onRecorderStopped(I)V
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 240
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecorderStopped, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 242
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmFrameSelect(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->onVideoRecordStop()V

    .line 243
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmVideoFileInfo(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_46

    const/4 v0, 0x1

    if-eq v2, v0, :cond_46

    .line 247
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 248
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 254
    :cond_46
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCurrentPage(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6b

    .line 255
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmTemplateWrapItemData(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;->getVlogMediaItems()Ljava/util/List;

    move-result-object v0

    iget-object v5, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCurrentSegmentIndex(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I

    move-result v5

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    .line 256
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v5

    :goto_69
    move-wide v11, v5

    goto :goto_6e

    :cond_6b
    const-wide/16 v5, 0xbb8

    goto :goto_69

    :goto_6e
    const-wide/16 v5, 0x0

    .line 263
    :try_start_70
    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_74} :catch_76

    move-wide v9, v7

    goto :goto_7b

    :catch_76
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-wide v9, v5

    .line 268
    :goto_7b
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRecorderStopped, sourceDuration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", segmentDuration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", tempPath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mNeedRecognize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmNeedRecognize(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0, v9, v10, v11, v12}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$misDurationValid(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;JJ)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 273
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v4, "onRecorderStopped, duration is invalid"

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 275
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 282
    :cond_d4
    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCurrentPage(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I

    move-result v2

    const/4 v13, 0x0

    if-ne v2, v4, :cond_162

    .line 292
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmVideoHintOrientation(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I

    move-result v2

    rem-int/lit16 v2, v2, 0xb4

    const-string v7, "onRecorderStopped, portraitFilePath not exists, path: "

    const-string v8, "landscape"

    const-string v14, "portrait"

    if-nez v2, :cond_12f

    .line 294
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v2, v3, v0, v14}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$mrotateVideo(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    iget-object v14, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v14}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmVlogHelper(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    move-result-object v14

    invoke-virtual {v14, v0, v8}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v3, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12b

    .line 299
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_127
    move-object v3, v0

    move-object v8, v3

    :goto_129
    move-object v2, v13

    goto :goto_175

    :cond_12b
    move-object v3, v0

    move-object v8, v3

    move-object v0, v2

    goto :goto_129

    .line 304
    :cond_12f
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v2, v3, v0, v8}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$mrotateVideo(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    iget-object v8, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmVlogHelper(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    move-result-object v8

    invoke-virtual {v8, v0, v14}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v3, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15f

    .line 309
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_127

    :cond_15f
    move-object v8, v0

    move-object v3, v2

    goto :goto_129

    .line 287
    :cond_162
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmVlogHelper(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/VlogHelper;

    move-result-object v2

    const-string v7, "free_shot"

    invoke-virtual {v2, v0, v7}, Lcom/transsion/camera/feature/mode/vlog/VlogHelper;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v3, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/FileUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-object v2, v0

    move-object v8, v2

    move-object v0, v13

    move-object v3, v0

    .line 318
    :goto_175
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmNeedPostProcess(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Z

    move-result v7

    if-nez v7, :cond_1a6

    .line 320
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCurrentPage(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I

    move-result v7

    if-ne v7, v4, :cond_196

    .line 321
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmFrameSelect(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    move-result-object v7

    invoke-virtual {v7, v11, v12, v9, v10}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->getHLResult(JJ)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object v7

    :goto_18f
    move-object/from16 v16, v13

    move-object v13, v7

    move-wide v6, v5

    move-object/from16 v5, v16

    goto :goto_1d2

    .line 323
    :cond_196
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmFrameSelect(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->getHLResults()Ljava/util/List;

    move-result-object v7

    move-wide/from16 v16, v5

    move-object v5, v7

    move-wide/from16 v6, v16

    goto :goto_1d2

    .line 325
    :cond_1a6
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmNeedRecognize(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_1d0

    .line 326
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v7}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Landroid/os/Handler;

    move-result-object v7

    iget-object v14, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v14}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCallbackListener(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda3;

    invoke-direct {v15, v14}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;)V

    invoke-virtual {v7, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    iget-object v7, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static/range {v7 .. v12}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$mgetHLResult(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;Ljava/lang/String;JJ)Lcom/volcengine/ck/highlight/data/HLExtractorResult;

    move-result-object v7

    goto :goto_18f

    :cond_1d0
    move-wide v6, v5

    move-object v5, v13

    .line 331
    :goto_1d2
    iget-object v8, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmNeedRecognize(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_1e5

    if-eqz v13, :cond_1e5

    invoke-virtual {v13}, Lcom/volcengine/ck/highlight/data/HLExtractorResult;->getStartTime()I

    move-result v6

    int-to-long v6, v6

    .line 334
    :cond_1e5
    iget-object v8, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v8}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCurrentPage(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)I

    move-result v8

    if-ne v8, v4, :cond_1fe

    .line 337
    iget-object v2, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Landroid/os/Handler;

    move-result-object v8

    move-object v2, v0

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda4;

    move-wide v4, v9

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20d

    .line 342
    :cond_1fe
    iget-object v0, v1, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda5;

    move-wide v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;Ljava/lang/String;JLjava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_20d
    return-void
.end method

.method public onRecorderStopping(I)V
    .registers 5

    .line 232
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecorderStopping, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmFrameSelect(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/setting/FrameSelect;->onVideoRecordStop()V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;->-$$Nest$fgetmCallbackListener(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper;)Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$1$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/feature/mode/vlog/recorder/RecorderWrapper$ICallbackListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
