.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->$r8$lambda$0xq_gUb2-w3iwM4w9wISzbY_vVQ(Ljava/util/List;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;)Z

    move-result p0

    return p0
.end method
