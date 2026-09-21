.class public final synthetic Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;IZF)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iput p2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;->f$1:I

    iput-boolean p3, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;->f$2:Z

    iput p4, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;->f$3:F

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;->f$1:I

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;->f$2:Z

    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$$ExternalSyntheticLambda2;->f$3:F

    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->$r8$lambda$fUl4C1QnyM0BdW4656vP9j99utI(Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;IZFLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
