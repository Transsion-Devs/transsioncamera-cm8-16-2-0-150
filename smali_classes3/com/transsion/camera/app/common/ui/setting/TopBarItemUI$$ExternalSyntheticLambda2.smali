.class public final synthetic Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

.field public final synthetic f$1:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    return-void
.end method


# virtual methods
.method public final onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda2;->f$1:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->$r8$lambda$FNdaooDJ_lupknyWz990BCnXlfc(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
