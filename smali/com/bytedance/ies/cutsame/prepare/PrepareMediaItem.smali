.class public final Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem$Companion;

.field public static final TYPE_IMAGE:I = 0x0

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private path:Ljava/lang/String;

.field private process:Z

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->Companion:Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->path:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->type:I

    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final getProcess()Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->process:Z

    return p0
.end method

.method public final getType()I
    .registers 1

    .line 8
    iget p0, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->type:I

    return p0
.end method

.method public final setPath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->path:Ljava/lang/String;

    return-void
.end method

.method public final setProcess(Z)V
    .registers 2

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->process:Z

    return-void
.end method

.method public final updatePath(Ljava/lang/String;)V
    .registers 3

    const-string v0, "newPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->process:Z

    .line 12
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareMediaItem;->path:Ljava/lang/String;

    return-void
.end method
