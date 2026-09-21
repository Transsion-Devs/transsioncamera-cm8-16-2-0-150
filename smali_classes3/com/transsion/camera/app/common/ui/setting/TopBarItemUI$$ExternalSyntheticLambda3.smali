.class public final synthetic Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZZ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;->f$1:Z

    iput p3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;->f$2:I

    iput-boolean p4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;->f$3:Z

    iput-boolean p5, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;->f$4:Z

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;->f$1:Z

    iget v2, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;->f$2:I

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;->f$3:Z

    iget-boolean v4, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$$ExternalSyntheticLambda3;->f$4:Z

    move-object v5, p1

    check-cast v5, Lcom/airbnb/lottie/LottieComposition;

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->$r8$lambda$f5LNku60ejsV9-sw0LNhTwbRR4w(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;ZIZZLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
