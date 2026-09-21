.class public final synthetic Lcom/transsion/camera/feature/backgroundservice/BackgroundService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/backgroundservice/BackgroundService;

.field public final synthetic f$1:Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/backgroundservice/BackgroundService;Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/backgroundservice/BackgroundService;

    iput-object p2, p0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/backgroundservice/BackgroundService;

    iget-object p0, p0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->$r8$lambda$OrGkZp7WlwZVYuM4lPSjNtEhjgU(Lcom/transsion/camera/feature/backgroundservice/BackgroundService;Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;)V

    return-void
.end method
