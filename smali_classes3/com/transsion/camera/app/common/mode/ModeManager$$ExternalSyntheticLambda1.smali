.class public final synthetic Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    check-cast p1, Lcom/transsion/camera/app/common/mode/ICameraMode;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->$r8$lambda$2YSCiy86bb7lCj-VMqmLrIZRyNY(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    return-void
.end method
