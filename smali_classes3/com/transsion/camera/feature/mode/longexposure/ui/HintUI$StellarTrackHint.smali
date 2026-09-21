.class Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;
.super Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$ITwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StellarTrackHint"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mStarSearchStatus:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)V
    .registers 3

    .line 280
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    .line 281
    const-string v0, "StellarTrackHint"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCaptureCancel()V
    .registers 3

    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->mCanceled:Z

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackStarSearchFailInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 333
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->mStarSearchStatus:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_3a

    const/4 v1, 0x2

    if-ne v1, v0, :cond_39

    goto :goto_3a

    :cond_39
    return-void

    .line 335
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackCancelingInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onCaptureEnd()V
    .registers 3

    .line 341
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->onCaptureEnd()V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackStarSearchFailInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAimAtStarrySkyInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 345
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->mCanceled:Z

    if-eqz v0, :cond_5a

    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->mStarSearchStatus:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_3c

    const/4 v1, 0x2

    if-ne v1, v0, :cond_5a

    .line 347
    :cond_3c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackCancelingInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackCanceledInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_5a
    return-void
.end method

.method public onCaptureStart()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAimAtStarrySkyInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 301
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->onCaptureStart()V

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->mCanceled:Z

    .line 303
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->mStarSearchStatus:I

    return-void
.end method

.method public onCaptureStop()V
    .registers 3

    .line 322
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StarHint;->onCaptureStop()V

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackStarSearchFailInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected onEntry()V
    .registers 2

    .line 286
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onEntry()V

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmTwilightMonitor(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->setTwilightListener(Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$ITwilightListener;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAimAtStarrySkyInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected onLeave()V
    .registers 3

    .line 293
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onLeave()V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmTwilightMonitor(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor;->setTwilightListener(Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$ITwilightListener;)V

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAimAtStarrySkyInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onStarSearched(I)V
    .registers 3

    .line 308
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onStarSearched(I)V

    .line 309
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->mStarSearchStatus:I

    const/4 v0, 0x4

    if-ne v0, p1, :cond_27

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    :cond_27
    const/4 v0, 0x3

    if-eq v0, p1, :cond_2f

    const/4 v0, 0x2

    if-ne v0, p1, :cond_2e

    goto :goto_2f

    :cond_2e
    return-void

    .line 315
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 316
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$StellarTrackHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStellarTrackStarSearchFailInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onTwilight(Lcom/transsion/camera/feature/mode/longexposure/monitor/TwilightMonitor$TWILIGHT;)V
    .registers 2

    return-void
.end method
