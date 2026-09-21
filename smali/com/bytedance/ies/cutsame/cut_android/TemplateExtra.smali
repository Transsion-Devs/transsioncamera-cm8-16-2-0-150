.class public final Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra$Companion;
    }
.end annotation


# static fields
.field public static final ALIGN_CANVAS:Ljava/lang/String; = "align_canvas"

.field public static final ALIGN_VIDEO:Ljava/lang/String; = "align_video"

.field public static final Companion:Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra$Companion;


# instance fields
.field private final alignMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "align_mode"
    .end annotation
.end field

.field private final fragments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fragments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->Companion:Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "alignMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->fragments:Ljava/util/List;

    .line 74
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->alignMode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    .line 75
    const-string p2, "align_canvas"

    .line 71
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->fragments:Ljava/util/List;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->alignMode:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->copy(Ljava/util/List;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->fragments:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->alignMode:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;)Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;"
        }
    .end annotation

    const-string p0, "alignMode"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->fragments:Ljava/util/List;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->fragments:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->alignMode:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->alignMode:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getAlignMode()Ljava/lang/String;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->alignMode:Ljava/lang/String;

    return-object p0
.end method

.method public final getFragments()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsame/cut_android/VideoFragment;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->fragments:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->fragments:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->alignMode:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TemplateExtra(fragments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->fragments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alignMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateExtra;->alignMode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
