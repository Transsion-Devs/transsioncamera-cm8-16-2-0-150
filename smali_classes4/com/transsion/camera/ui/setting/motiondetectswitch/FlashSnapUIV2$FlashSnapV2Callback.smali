.class Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$FlashSnapV2Callback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashSnapV2Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$FlashSnapV2Callback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$FlashSnapV2Callback;-><init>(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;)V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 4

    .line 208
    check-cast p1, Ljava/lang/String;

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v0, 0xb

    if-ne v0, p2, :cond_2d

    .line 209
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$FlashSnapV2Callback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->-$$Nest$fgetmIconView(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    move-result-object p2

    if-eqz p2, :cond_2d

    .line 210
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$FlashSnapV2Callback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->-$$Nest$fgetmIconView(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    move-result-object p2

    if-eqz p1, :cond_1f

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_21

    :cond_1f
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_21
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2$FlashSnapV2Callback;->this$0:Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;->-$$Nest$fgetmIconView(Lcom/transsion/camera/ui/setting/motiondetectswitch/FlashSnapUIV2;)Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2d
    return-void
.end method
