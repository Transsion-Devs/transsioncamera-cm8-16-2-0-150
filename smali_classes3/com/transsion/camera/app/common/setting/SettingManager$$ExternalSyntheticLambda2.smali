.class public final synthetic Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/setting/SettingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/setting/SettingManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/setting/SettingManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/setting/SettingManager;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->$r8$lambda$Af1fsxaWWzhJxQGJ2QLbrX545vw(Lcom/transsion/camera/app/common/setting/SettingManager;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    return-void
.end method
