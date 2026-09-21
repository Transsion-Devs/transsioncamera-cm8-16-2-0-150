.class public final synthetic Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda17;->f$0:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI$$ExternalSyntheticLambda17;->f$0:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->$r8$lambda$DPrXCeIajFWodI9hmMZl2ahmg1I(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;Ljava/util/Map;)V

    return-void
.end method
