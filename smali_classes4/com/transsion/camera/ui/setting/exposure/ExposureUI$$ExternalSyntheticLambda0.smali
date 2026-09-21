.class public final synthetic Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/ui/setting/exposure/ExposureUI;

    check-cast p1, Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureUI;->$r8$lambda$ol84GG3ZbCzmKcTuruQHy8TwOgI(Lcom/transsion/camera/ui/setting/exposure/ExposureUI;Lcom/transsion/camera/ui/setting/exposure/IExposureAnimator;)V

    return-void
.end method
