.class public final synthetic Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Landroid/content/pm/PackageManager;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/provider/ProcessPhotoProvider;->$r8$lambda$FAJyVwoetMVH0A7RQFlx-vpORw4(ILandroid/content/pm/PackageManager;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
