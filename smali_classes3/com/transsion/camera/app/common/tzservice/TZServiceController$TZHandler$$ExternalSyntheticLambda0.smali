.class public final synthetic Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/tzservice/TZEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;Lcom/transsion/camera/app/common/tzservice/TZEvent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;

    iput-object p2, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/tzservice/TZEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;

    iget-object p0, p0, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/tzservice/TZEvent;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;->$r8$lambda$VxCGn7PBs3Y0aGSrgoILQKmUAT0(Lcom/transsion/camera/app/common/tzservice/TZServiceController$TZHandler;Lcom/transsion/camera/app/common/tzservice/TZEvent;)V

    return-void
.end method
