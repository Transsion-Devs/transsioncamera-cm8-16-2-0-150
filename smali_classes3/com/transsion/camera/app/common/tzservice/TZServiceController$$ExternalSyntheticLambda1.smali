.class public final synthetic Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController;Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    iput-object p2, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->$r8$lambda$01Zziwt3Xv4hbwiAsKi44DIpmIE(Lcom/transsion/camera/app/common/tzservice/TZServiceController;Lcom/transsion/camera/app/common/storage/IBackgroundStorageManager;)V

    return-void
.end method
