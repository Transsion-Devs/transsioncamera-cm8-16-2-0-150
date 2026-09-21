.class public Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIcon:I

.field private final mTemplate:Ljava/lang/String;

.field private final mTitle:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->mTitle:I

    .line 24
    iput p2, p0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->mIcon:I

    .line 25
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->mTemplate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->mIcon:I

    return p0
.end method

.method public getTemplate()Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->mTemplate:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->mTitle:I

    return p0
.end method
