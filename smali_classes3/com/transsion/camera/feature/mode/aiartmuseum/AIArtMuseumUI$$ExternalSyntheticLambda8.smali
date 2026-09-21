.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda8;->f$0:I

    iput p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda8;->f$0:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->$r8$lambda$HPxTPzOvr8WcaNkuP3Y801W5UC4(IILcom/transsion/camera/featurelibs/aicommon/ui/BaseUI;)V

    return-void
.end method
