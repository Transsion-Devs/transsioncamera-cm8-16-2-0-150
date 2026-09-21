.class public final synthetic Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    iput-wide p2, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    iget-wide v1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;->f$1:J

    iget-object v3, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->$r8$lambda$sSXxvIgzDUtZL0ZdAQY9YkUX5zU(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
