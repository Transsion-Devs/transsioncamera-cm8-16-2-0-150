.class public final synthetic Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;

    check-cast p1, Landroid/media/Image;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;->$r8$lambda$3eGduIYUhuJ9b5xXYkqoIQXlIuo(Lcom/transsion/camera/app/common/bgservice/BgServiceHelper;Landroid/media/Image;)V

    return-void
.end method
