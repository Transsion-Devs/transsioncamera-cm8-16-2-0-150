.class Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->switchIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;

.field final synthetic val$view:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;


# direct methods
.method public static synthetic $r8$lambda$R8S4Dmonv5Xnd5wjwVR-4oD0vlY(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;->lambda$onCompositionLoaded$0(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V
    .registers 3

    .line 647
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;->this$0:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;->val$view:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCompositionLoaded$0(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 656
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;->this$0:Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;

    if-eqz p1, :cond_d

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->-$$Nest$fgetmIconOffColor(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)I

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->-$$Nest$fgetmIconOnColor(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;)I

    move-result p0

    :goto_11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 8

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;->val$view:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v1, Lcom/airbnb/lottie/model/KeyPath;

    const-string v2, "**"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    .line 651
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/KeyPath;

    .line 652
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v2

    .line 653
    invoke-static {}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 654
    const-string v3, "icon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 655
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;->val$view:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v4, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/automacroswitch/AutoMacroSwitchUI$1;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_15

    :cond_5e
    return-void
.end method
