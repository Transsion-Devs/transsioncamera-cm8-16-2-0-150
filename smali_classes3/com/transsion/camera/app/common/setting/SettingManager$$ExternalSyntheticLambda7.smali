.class public final synthetic Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/setting/SettingManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/setting/SettingManager;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/camera/app/common/setting/SettingManager;

    iput-object p2, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda7;->f$2:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda7;->f$0:Lcom/transsion/camera/app/common/setting/SettingManager;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingManager$$ExternalSyntheticLambda7;->f$2:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    check-cast p1, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/common/setting/SettingManager;->$r8$lambda$cT7WJ8Gwu-Wub1pLyDagEc4nyNA(Lcom/transsion/camera/app/common/setting/SettingManager;Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;Lcom/transsion/camera/app/common/setting/ICameraSetting;)V

    return-void
.end method
