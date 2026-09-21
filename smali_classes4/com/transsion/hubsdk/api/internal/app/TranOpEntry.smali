.class public Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mMode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;->mMode:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 1

    .line 20
    iget p0, p0, Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;->mMode:I

    return p0
.end method

.method public setMode(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/transsion/hubsdk/api/internal/app/TranOpEntry;->mMode:I

    return-void
.end method
