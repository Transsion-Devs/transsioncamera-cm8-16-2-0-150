.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIcon:I

.field private final mTitle:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->mValue:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->mTitle:I

    .line 25
    iput p3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->mIcon:I

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->mIcon:I

    return p0
.end method

.method public getTitle()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->mTitle:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->mValue:Ljava/lang/String;

    return-object p0
.end method
