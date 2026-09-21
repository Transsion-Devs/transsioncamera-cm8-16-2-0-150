.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(JLandroid/net/Uri;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda28;->f$0:J

    iput-object p3, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda28;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-wide v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda28;->f$0:J

    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda28;->f$1:Landroid/net/Uri;

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->$r8$lambda$P58xkVSnTCUtK8BmuExsWKJ58vg(JLandroid/net/Uri;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
