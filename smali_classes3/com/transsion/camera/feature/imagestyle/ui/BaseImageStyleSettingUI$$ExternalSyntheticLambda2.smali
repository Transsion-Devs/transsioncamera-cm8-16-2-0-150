.class public final synthetic Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;

    check-cast p1, Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;->$r8$lambda$PErCxbyc06jgDf_-5wE1asSMasA(Lcom/transsion/camera/feature/imagestyle/ui/BaseImageStyleSettingUI;Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method
