.class public final synthetic Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

    return-void
.end method


# virtual methods
.method public final onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractWideCameraUI$$ExternalSyntheticLambda4;->f$0:Lcom/transsion/camera/app/ui/AbstractWideCameraUI;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractWideCameraUI;->$r8$lambda$D7-YiIbM_zo501moeUEuTXUoJwo(Lcom/transsion/camera/app/ui/AbstractWideCameraUI;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
