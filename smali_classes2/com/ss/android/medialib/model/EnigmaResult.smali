.class public Lcom/ss/android/medialib/model/EnigmaResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field result:[Lcom/ss/android/medialib/model/Enigma;

.field public zoomFactor:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()[Lcom/ss/android/medialib/model/Enigma;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/ss/android/medialib/model/EnigmaResult;->result:[Lcom/ss/android/medialib/model/Enigma;

    return-object p0
.end method

.method public setResult([Lcom/ss/android/medialib/model/Enigma;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/ss/android/medialib/model/EnigmaResult;->result:[Lcom/ss/android/medialib/model/Enigma;

    return-void
.end method
