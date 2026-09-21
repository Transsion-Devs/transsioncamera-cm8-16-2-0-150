.class final Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InterceptShutterListener"
.end annotation


# instance fields
.field mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

.field final synthetic this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)V
    .registers 3

    .line 3081
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3082
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    return-void
.end method


# virtual methods
.method public onShutterCancel()V
    .registers 1

    return-void
.end method

.method public onShutterClick(II)Z
    .registers 3

    .line 3087
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->isShotting()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 3088
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "stop continuous shot when it is shotting"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3089
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->stopContinuousShot()V

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public onShutterDown()V
    .registers 1

    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 3

    .line 3097
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->mContinuousShot:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->isShotting()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 3098
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot$InterceptShutterListener;->this$1:Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;->-$$Nest$fgetTAG(Lcom/transsion/camera/app/common/mode/CommonPhotoMode$ContinuousShot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "do nothing when it is shotting"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public onShutterUp(I)V
    .registers 2

    return-void
.end method
