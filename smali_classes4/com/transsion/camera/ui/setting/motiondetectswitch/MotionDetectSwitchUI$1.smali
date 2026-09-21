.class Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;

.field final synthetic val$view:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public static synthetic $r8$lambda$zX4pm2R5oZYsrc6FnnvY1sC37-g(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;->lambda$onCompositionLoaded$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;Lcom/airbnb/lottie/LottieAnimationView;)V
    .registers 3

    .line 160
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;->val$view:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCompositionLoaded$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    if-eqz p1, :cond_9

    iget p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOnColor:I

    goto :goto_b

    :cond_9
    iget p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIconOffColor:I

    :goto_b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 8

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;->val$view:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/KeyPath;

    .line 165
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;

    invoke-static {v3}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->-$$Nest$fgetTAG(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnCompositionLoaded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 168
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;->val$view:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v4, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI$1;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_15

    :cond_60
    return-void
.end method
