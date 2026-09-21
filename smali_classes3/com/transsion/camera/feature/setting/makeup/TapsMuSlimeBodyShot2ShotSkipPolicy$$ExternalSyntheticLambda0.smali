.class public final synthetic Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;

    check-cast p1, Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;->$r8$lambda$Y9Pke-xFQ_zVdHBUcQHCFYnedak(Lcom/transsion/camera/feature/setting/makeup/TapsMuSlimeBodyShot2ShotSkipPolicy;Lcom/transsion/camera/app/common/taps/IBackgroundShot2ShotSkipPolicy;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
