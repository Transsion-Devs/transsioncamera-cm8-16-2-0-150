.class public final synthetic Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    return-void
.end method
