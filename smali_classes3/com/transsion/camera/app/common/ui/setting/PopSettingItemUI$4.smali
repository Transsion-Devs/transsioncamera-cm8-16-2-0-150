.class Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->initIconColor(Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

.field final synthetic val$view:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;


# direct methods
.method public static synthetic $r8$lambda$HB8XK3ehrV9vnU_m-P9lI-ak0_I(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->lambda$onCompositionLoaded$1(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qnds4lBmOG6z5z0iIPX5cHngdk8(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->lambda$onCompositionLoaded$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V
    .registers 3

    .line 1145
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->val$view:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCompositionLoaded$0(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 1154
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    if-eqz p1, :cond_13

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmIconOffColor(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)I

    move-result p0

    goto :goto_17

    :cond_13
    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmIconOnColor(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)I

    move-result p0

    :goto_17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCompositionLoaded$1(Lcom/airbnb/lottie/value/LottieFrameInfo;)Ljava/lang/Integer;
    .registers 3

    .line 1159
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v0, "off"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    if-eqz p1, :cond_13

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmIconOffColor(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)I

    move-result p0

    goto :goto_17

    :cond_13
    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->-$$Nest$fgetmIconOnColor(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;)I

    move-result p0

    :goto_17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 7

    .line 1148
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->val$view:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    const-string v1, "**"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object p1

    .line 1149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 1150
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/KeyPath;->keysToString()Ljava/lang/String;

    move-result-object v1

    .line 1151
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "key_live_photo"

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 1152
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 1153
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->val$view:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v3, Lcom/airbnb/lottie/LottieProperty;->COLOR:Ljava/lang/Integer;

    new-instance v4, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;)V

    invoke-virtual {v1, v0, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    .line 1157
    :cond_49
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->this$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1158
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;->val$view:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    sget-object v2, Lcom/airbnb/lottie/LottieProperty;->STROKE_COLOR:Ljava/lang/Integer;

    new-instance v3, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$4;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    goto :goto_15

    :cond_64
    return-void
.end method
