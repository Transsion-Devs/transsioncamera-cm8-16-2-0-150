.class public final synthetic Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/BaseOptionUI;->$r8$lambda$FpQsIezew0i0bOY44qGbHSfezbs(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;Lcom/transsion/camera/app/common/ui/setting/ISettingUI;)Z

    move-result p0

    return p0
.end method
