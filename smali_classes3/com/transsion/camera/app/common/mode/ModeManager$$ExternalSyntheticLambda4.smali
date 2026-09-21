.class public final synthetic Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/mode/ModeManager;

.field public final synthetic f$1:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda4;->f$1:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda4;->f$1:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->$r8$lambda$hBytOWqyh_XIAoejB5zsXol5yPI(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;)V

    return-void
.end method
