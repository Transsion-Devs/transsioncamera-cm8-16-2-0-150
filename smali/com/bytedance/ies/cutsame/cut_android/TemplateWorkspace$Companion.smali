.class public final Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmptyMetadata()Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;
    .registers 1

    .line 187
    # getter for: Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->EmptyMetadata:Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;
    invoke-static {}, Lcom/bytedance/ies/cutsame/cut_android/TemplateWorkspace;->access$getEmptyMetadata$cp()Lcom/bytedance/ies/cutsame/cut_android/WorkspaceMetaData;

    move-result-object p0

    return-object p0
.end method
