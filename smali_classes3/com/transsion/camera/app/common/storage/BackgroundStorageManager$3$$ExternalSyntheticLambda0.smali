.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$3;->$r8$lambda$-8nhWSKVf22vTZOhw8JqerdS9ns(ILandroid/net/Uri;)Z

    move-result p0

    return p0
.end method
