.class Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->switchIconColor(Lcom/airbnb/lottie/LottieAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

.field final synthetic val$view:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public static synthetic $r8$lambda$ZzPChWCXWBbq7HR60RTCc7rG8c4(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->lambda$onCompositionLoaded$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$piQofoPWr4lmSsPa8h3YpCz5A9k(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->lambda$onCompositionLoaded$1(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;Lcom/airbnb/lottie/LottieAnimationView;)V
    .registers 3

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->val$view:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCompositionLoaded$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCompositionLoaded$1(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-virtual {p1}, Lcom/airbnb/lottie/value/LottieFrameInfo;->getOverallProgress()F

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/MotionDetectSwitchUI;->mIsIconSelected:Z

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->getAnimatingColor(FZ)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 6

    .line 71
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetmIconView(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    if-nez p1, :cond_14

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetTAG(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mIconView is null, exit ahead of time."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_14
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->val$view:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 77
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "Ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "Vector"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 79
    :cond_49
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetmIconView(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 82
    :cond_59
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;->-$$Nest$fgetmIconView(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapLiteUI$1;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_29

    :cond_6a
    return-void
.end method
