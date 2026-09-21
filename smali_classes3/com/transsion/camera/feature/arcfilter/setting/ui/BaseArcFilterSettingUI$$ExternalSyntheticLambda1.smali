.class public final synthetic Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;

    return-void
.end method


# virtual methods
.method public final onTransfer(Z)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->updateArcIndicatorRingScreenLight(Z)V

    return-void
.end method
