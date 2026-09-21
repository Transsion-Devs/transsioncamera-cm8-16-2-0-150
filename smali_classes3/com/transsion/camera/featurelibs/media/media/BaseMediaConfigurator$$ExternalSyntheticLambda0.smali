.class public final synthetic Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;

.field public final synthetic f$1:Landroid/media/MediaRecorder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;Landroid/media/MediaRecorder;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;

    iput-object p2, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaRecorder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaRecorder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->$r8$lambda$ia9ppOSUq5GZe55QgDlFZYwFG40(Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;Landroid/media/MediaRecorder;Ljava/lang/String;)V

    return-void
.end method
