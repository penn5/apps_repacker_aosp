.class public final Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
.super Ljava/lang/Object;
.source "RILImsCallModify.java"


# instance fields
.field public callIndex:I

.field public final currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

.field public final destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

.field public modifyReason:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    .line 7
    new-instance v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-direct {v0}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;-><init>()V

    iput-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    .line 4
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 15
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v10, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;>;"
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 72
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 74
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v1, v12, 0x18

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 75
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    .line 73
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    .line 77
    .local v13, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 78
    const/4 v9, 0x0

    .local v9, "_hidl_index_0":I
    :goto_24
    if-ge v9, v12, :cond_37

    .line 79
    new-instance v11, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    invoke-direct {v11}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;-><init>()V

    .line 80
    .local v11, "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    mul-int/lit8 v1, v9, 0x18

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 81
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 85
    .end local v11    # "_hidl_vec_element":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    :cond_37
    return-object v10
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 10
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList",
            "<",
            "Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 106
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 107
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 108
    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 109
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 110
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v1, 0x0

    .local v1, "_hidl_index_0":I
    :goto_1e
    if-ge v1, v2, :cond_2f

    .line 111
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    mul-int/lit8 v5, v1, 0x18

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 113
    :cond_2f
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 116
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 117
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    if-ne p0, p1, :cond_5

    .line 13
    return v4

    .line 15
    :cond_5
    if-nez p1, :cond_8

    .line 16
    return v3

    .line 18
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    if-eq v1, v2, :cond_11

    .line 19
    return v3

    :cond_11
    move-object v0, p1

    .line 21
    check-cast v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;

    .line 22
    .local v0, "other":Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->callIndex:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->callIndex:I

    if-eq v1, v2, :cond_1b

    .line 23
    return v3

    .line 25
    :cond_1b
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 26
    return v3

    .line 28
    :cond_26
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    iget-object v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 29
    return v3

    .line 31
    :cond_31
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->modifyReason:I

    iget v2, v0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->modifyReason:I

    if-eq v1, v2, :cond_38

    .line 32
    return v3

    .line 34
    :cond_38
    return v4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->callIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 41
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 42
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 43
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->modifyReason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->callIndex:I

    .line 91
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    const-wide/16 v2, 0x4

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 92
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    const-wide/16 v2, 0xc

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->modifyReason:I

    .line 94
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 63
    const-wide/16 v2, 0x18

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 64
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 65
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, ".callIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->callIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v1, ", .currCallDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v1, ", .destCallDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v1, ", .modifyReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget v1, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->modifyReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .prologue
    .line 121
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->callIndex:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 122
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->currCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 123
    iget-object v0, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->destCallDetails:Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;

    const-wide/16 v2, 0xc

    add-long/2addr v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 124
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->modifyReason:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 125
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .prologue
    .line 97
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 98
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lvendor/huawei/hardware/radio/V1_0/RILImsCallModify;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 100
    return-void
.end method