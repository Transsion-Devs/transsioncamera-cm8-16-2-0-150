.class public final synthetic Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageGuideAdapter;->$r8$lambda$JMXWC7XiB59CxCerNpBoArUmeiQ(Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;)Z

    move-result p0

    return p0
.end method
