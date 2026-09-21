.class public final synthetic Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    iput-object p2, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController;

    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController;->$r8$lambda$QUQJBqfSXOgHNvPh0GK4Y4odo1U(Lcom/transsion/camera/app/common/tzservice/TZServiceController;Lcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method
