.class public final synthetic Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;->$r8$lambda$ryOR3lbLl-iCIk_ARdhil1wXBB4(Lcom/transsion/camera/feature/setting/superantivideo/SuperAntiVideo;[Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
