.class public final synthetic Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget v0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda0;->f$0:I

    iget p0, p0, Lcom/transsion/camera/feature/setting/zoom/Zoom5$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;->$r8$lambda$JeCBxuMwl3Un5NsilpQVGXvkZmE(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method
