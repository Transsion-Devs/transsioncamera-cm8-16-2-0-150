.class public final synthetic Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    iput p2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final onLoadDone(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;

    iget p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->$r8$lambda$YSnaI5HW1t5_FLjoLCZIZ8nr2F8(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;ILcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method
