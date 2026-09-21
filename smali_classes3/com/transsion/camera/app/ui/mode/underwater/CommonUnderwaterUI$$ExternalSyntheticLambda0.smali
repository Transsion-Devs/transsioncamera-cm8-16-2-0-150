.class public final synthetic Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI;->ringScreenLightUpdateUI()V

    return-void
.end method
