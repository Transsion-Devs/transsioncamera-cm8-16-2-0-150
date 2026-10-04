.class public final synthetic Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda1;->f$0:Z

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda1;->f$0:Z

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->$r8$lambda$gV_ehIp88Ghlyn2EK-_x0t93rpU(ZLjava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
