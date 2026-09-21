.class public final synthetic Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->$r8$lambda$j13gsf1QfWD3S9h4m3BW3TFFScw(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;Lcom/transsion/camera/app/common/ui/setting/ISettingUI;)Z

    move-result p0

    return p0
.end method
